.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetEnvironmentReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetEnvironmentReq"
.end annotation


# instance fields
.field channel:I

.field mode:B

.field reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetEnvironmentReq;->reserved:[B

    .line 944
    return-void
.end method

.method public static parseContent(IB)[B
    .locals 5
    .param p0, "channel"    # I
    .param p1, "mode"    # B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 951
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 953
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 954
    .local v0, "ch":[B
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 956
    aput-byte p1, v1, v4

    .line 958
    return-object v1
.end method
