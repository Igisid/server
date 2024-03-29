/**
 * @file customer_crypto_unit.h
 * @author Artyom Grigorian (grigorianartyom1@gmail.com)
 * @brief
 * @version 0.1
 * @date 2022-03-23
 * @section DESCRIPTION
 * This class is made to add absraction level to customer signing
 * process is defined in Security namespace
 * @section Last Changes 21-04-2022 Artyom Grigorian
 *
 * Improved include directories
 *
 * @copyright Copyright (c) 2022
 *
 */
#ifndef __CUSTOMER_CRYPTO_UNIT_H__
#define __CUSTOMER_CRYPTO_UNIT_H__

#if defined(__unix)
#define MAX_FILE_NAME_LENGTH 255  /*bytes*/
#define MAX_FILE_PATH_LENGTH 4096 /*bytes*/
#endif                            /*__UNIX__*/

#if defined(__WIN32) || (__WIN64)
#define MAX_FILE_NAME_LENGTH 260 /*bytes*/
#define MAX_FILE_PATH_LENGTH 260 /*bytes*/
#endif                           /*__WIN32__*/

#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>

#include <algorithm>
#include <cmath>
#include <map>
#include <memory>

#include "crypto_unit.h"

namespace Security {
class CustomerCryptoUnit;
struct RSA_UNAR_KEY;

typedef std::pair<RSA_UNAR_KEY, RSA_UNAR_KEY> RSA_Keypair;

template <typename T>
using shared_ptr = std::shared_ptr<T>;

typedef shared_ptr<AES_Unit> aes_shrd_ptr;

typedef shared_ptr<RSA_Unit> rsa_shrd_ptr;

typedef shared_ptr<Security::RSA_Keypair> RSA_Keypair_shrd_ptr;

/*singleton struct to generate key <<unions>> */
struct RSA_UNAR_KEY {
  RSA* r_key;
  char* c_key;

  void free_all(void) noexcept {
    delete[] c_key;
    RSA_free(r_key);
  }
};

bool is_dir_exist(char const* dirpath);

class CustomerCryptoUnit {
 public:
  /*Model of this class allows only to generate or/and assign server side
   * keypair*/
  /*And only assign client public key*/
  CustomerCryptoUnit(aes_shrd_ptr aes, rsa_shrd_ptr rsa, int sfd = 0);

  ~CustomerCryptoUnit();

  /*Set retrieved cliend-created public RSA key*/
  int set_client_key(const RSA_UNAR_KEY& __other);

  std::string get_aes_token(void) const noexcept;

  void set_aes_token(const std::string&) noexcept;

  aes_shrd_ptr get_aes_ptr(void) const noexcept;
  rsa_shrd_ptr get_rsa_ptr(void) const noexcept;

  /*Return RSA_UNAR_KEY of $this model*/
  RSA_UNAR_KEY& get_client_key(void);

 private:
  /*
  Key which has been retrieved from client side
  PUBLIC probably
      */
  RSA_UNAR_KEY client_key;

  /*Unique token (int) yet is sfd of connection as
      one connection can be hold by only and only one customer*/
  char* c_sfd;

  aes_shrd_ptr aes;
  rsa_shrd_ptr rsa;
};

}  // namespace Security

#endif  //__CUSTOMER_CRYPTO_UNIT_H__