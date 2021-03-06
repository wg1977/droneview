.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field public bits:[I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 40
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 41
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x5

    if-le p1, v1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v0

    .line 54
    .local v0, "newBits":[I
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 57
    .end local v0    # "newBits":[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 233
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 5
    .param p1, "bit"    # Z

    .prologue
    .line 148
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    shr-int/lit8 v1, v1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 152
    :cond_0
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 153
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 3
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 172
    .local v1, "otherSize":I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "numBits"    # I

    .prologue
    const/4 v2, 0x1

    .line 161
    if-ltz p2, :cond_0

    const/16 v1, 0x20

    if-le p2, v1, :cond_1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Num bits must be between 0 and 32"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 165
    move v0, p2

    .local v0, "numBitsLeft":I
    :goto_0
    if-lez v0, :cond_3

    .line 166
    add-int/lit8 v1, v0, -0x1

    shr-int v1, p1, v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v2

    .line 101
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 83
    return-void
.end method

.method public get(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRange(IIZ)Z
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # Z

    .prologue
    const/16 v9, 0x1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 116
    if-ge p2, p1, :cond_0

    .line 117
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 119
    :cond_0
    if-ne p2, p1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v7

    .line 122
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 123
    shr-int/lit8 v1, p1, 0x5

    .line 124
    .local v1, "firstInt":I
    shr-int/lit8 v5, p2, 0x5

    .line 125
    .local v5, "lastInt":I
    move v2, v1

    .local v2, "i":I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 126
    if-le v2, v1, :cond_4

    move v0, v8

    .line 127
    .local v0, "firstBit":I
    :goto_2
    if-ge v2, v5, :cond_5

    move v4, v9

    .line 129
    .local v4, "lastBit":I
    :goto_3
    if-nez v0, :cond_6

    if-ne v4, v9, :cond_6

    .line 130
    const/4 v6, -0x1

    .line 140
    .local v6, "mask":I
    :cond_3
    iget-object v10, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v10, v10, v2

    and-int/2addr v10, v6

    if-eqz p3, :cond_7

    .end local v6    # "mask":I
    :goto_4
    if-eq v10, v6, :cond_8

    move v7, v8

    .line 141
    goto :goto_0

    .line 126
    .end local v0    # "firstBit":I
    .end local v4    # "lastBit":I
    :cond_4
    and-int/lit8 v0, p1, 0x1f

    goto :goto_2

    .line 127
    .restart local v0    # "firstBit":I
    :cond_5
    and-int/lit8 v4, p2, 0x1f

    goto :goto_3

    .line 132
    .restart local v4    # "lastBit":I
    :cond_6
    const/4 v6, 0x0

    .line 133
    .restart local v6    # "mask":I
    move v3, v0

    .local v3, "j":I
    :goto_5
    if-gt v3, v4, :cond_3

    .line 134
    shl-int v10, v7, v3

    or-int/2addr v6, v10

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3    # "j":I
    :cond_7
    move v6, v8

    .line 140
    goto :goto_4

    .line 125
    .end local v6    # "mask":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 222
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    new-array v1, v3, [I

    .line 223
    .local v1, "newBits":[I
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 224
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 225
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iput-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 230
    return-void
.end method

.method public set(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 74
    return-void
.end method

.method public setBulk(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "newBits"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    shr-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    .line 94
    return-void
.end method

.method public toBytes(I[BII)V
    .locals 5
    .param p1, "bitOffset"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "numBytes"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "theByte":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    rsub-int/lit8 v4, v1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 204
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    add-int v3, p3, v0

    int-to-byte v4, v2

    aput-byte v4, p2, v3

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "j":I
    .end local v2    # "theByte":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 238
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_2

    .line 239
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    .line 240
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x58

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/16 v2, 0x2e

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .param p1, "other"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sizes don\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method
