.class public Lcom/tencent/android/tpush/service/channel/c/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Landroid/util/SparseArray;

.field public static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    .line 41
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->c:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->d:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 57
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 58
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 61
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 62
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 65
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 66
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 69
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 70
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 73
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 74
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 77
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 78
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 81
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 82
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 85
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 86
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 93
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 94
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 97
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 98
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 101
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->a:Ljava/lang/Integer;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenReq;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 102
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->b:Ljava/lang/Integer;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenRsp;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/c/d;->a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V

    .line 103
    return-void
.end method

.method public static a(S[B)Lcom/qq/taf/jce/JceStruct;
    .locals 3

    .prologue
    .line 114
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/c/d;->a(S)Ljava/lang/Class;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    .line 118
    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 119
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/CommandMappingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/CommandMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(S)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)S
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Integer;Ljava/lang/Byte;Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
