.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "AI01320xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "weight"    # I

    .prologue
    .line 41
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 42
    const-string v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected checkWeight(I)I
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 49
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 52
    .end local p1    # "weight":I
    :goto_0
    return p1

    .restart local p1    # "weight":I
    :cond_0
    add-int/lit16 p1, p1, -0x2710

    goto :goto_0
.end method
