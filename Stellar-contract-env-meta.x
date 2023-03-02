// Copyright 2022 Stellar Development Foundation and contributors. Licensed
// under the Apache License, Version 2.0. See the COPYING file at the root
// of this distribution or at http://www.apache.org/licenses/LICENSE-2.0

// The contract spec XDR is highly experimental, incomplete, and still being
// iterated on. Breaking changes expected.

% #include "xdr/Stellar-types.h"
namespace stellar
{

enum SCEnvMetaKind
{
    SC_ENV_META_KIND_INTERFACE_VERSION = 0,
    SC_ENV_META_KIND_SPECIAL_FUNCTIONS = 1
};

enum SCEnvSpecialFnType
{
    SC_ENV_SPECIAL_FN_TYPE_CUSTOM_ACCOUNT_CHECK_AUTH = 0
};

struct SCEnvSpecialFn
{
    SCEnvSpecialFnType fnType;
    SCSymbol name;
};

union SCEnvMetaEntry switch (SCEnvMetaKind kind)
{
case SC_ENV_META_KIND_INTERFACE_VERSION:
    uint64 interfaceVersion;
case SC_ENV_META_KIND_SPECIAL_FUNCTIONS:
    SCEnvSpecialFn specialFns<>;
};

}
