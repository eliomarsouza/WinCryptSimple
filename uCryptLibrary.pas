unit uCryptLibrary;

interface

uses
  Types, Windows, Messages;

const
  Crypt32 = 'crypt32.dll';
  CryptNet = 'cryptnet.dll';
  Advapi32 = 'advapi32.dll';
  cryptuiapi = 'cryptui.dll';


   //fun��es
  function CertNameToStr(dwCertEncodingType: DWORD; pName: PCERT_NAME_BLOB;
  dwStrType: DWORD; psz: LPWSTR; csz: DWORD): DWORD; stdcall;


//+-------------------------------------------------------------------------
//  Certificate name string types
//--------------------------------------------------------------------------
  const
    {$EXTERNALSYM CERT_X500_NAME_STR}
    CERT_X500_NAME_STR    = 3;


  const
    CRYPTUI_SELECT_ISSUEDBY_COLUMN       = $000000002;
    {$EXTERNALSYM CRYPTUI_SELECT_ISSUEDBY_COLUMN}

    CRYPTUI_SELECT_INTENDEDUSE_COLUMN    = $000000004;
    {$EXTERNALSYM CRYPTUI_SELECT_INTENDEDUSE_COLUMN}

    CRYPTUI_SELECT_LOCATION_COLUMN       = $000000010;
    {$EXTERNALSYM CRYPTUI_SELECT_LOCATION_COLUMN}

    {$EXTERNALSYM CERT_STORE_PROV_SYSTEM_W}
    CERT_STORE_PROV_SYSTEM_W            = LPCSTR(10);


    /////
    {$EXTERNALSYM CERT_SYSTEM_STORE_LOCATION_SHIFT}
    CERT_SYSTEM_STORE_LOCATION_SHIFT                = 16;

    //  Registry: HKEY_CURRENT_USER or HKEY_LOCAL_MACHINE
    {$EXTERNALSYM CERT_SYSTEM_STORE_CURRENT_USER_ID}
    CERT_SYSTEM_STORE_CURRENT_USER_ID               = 1;

    {$EXTERNALSYM CERT_SYSTEM_STORE_CURRENT_USER}
    CERT_SYSTEM_STORE_CURRENT_USER                  =
    CERT_SYSTEM_STORE_CURRENT_USER_ID shl CERT_SYSTEM_STORE_LOCATION_SHIFT;


    //+-------------------------------------------------------------------------
    //  Certificate Store open/property flags
    //--------------------------------------------------------------------------
    {$EXTERNALSYM CERT_STORE_READONLY_FLAG}
    CERT_STORE_READONLY_FLAG = $00008000;


  type
    {$EXTERNALSYM HCRYPTPROV_LEGACY}
    HCRYPTPROV_LEGACY = ULONG_PTR;


    {$EXTERNALSYM CertOpenStore}
    function CertOpenStore(lpszStoreProvider: LPCSTR; dwEncodingType: DWORD;
    hCryptProv: HCRYPTPROV_LEGACY; dwFlags: DWORD;
    pvPara: Pointer): HCERTSTORE; stdcall;

    {$EXTERNALSYM CryptUIDlgSelectCertificateFromStore}
    function CryptUIDlgSelectCertificateFromStore(hCertStore: HCERTSTORE; hwnd: HWND; pwszTitle, pwszDisplayString: LPCWSTR;
    dwDontUseColumn, dwFlags: DWORD; pvReserved: LPVOID): PCCERT_CONTEXT; stdcall;


    //imports dll's
    function CertOpenStore; external Crypt32 name 'CertOpenStore';
    function CryptUIDlgSelectCertificateFromStore; external cryptuiapi name 'CryptUIDlgSelectCertificateFromStore';
    function CertNameToStr; external Crypt32 name 'CertNameToStrW';

  implementation



end.
