.class public Lcom/tencent/android/tpush/stat/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Lcom/tencent/android/tpush/stat/d;

.field static b:Lcom/tencent/android/tpush/stat/d;

.field static c:Ljava/lang/String;

.field static volatile d:Ljava/lang/String;

.field private static e:Lcom/tencent/android/tpush/stat/a/f;

.field private static f:Lcom/tencent/android/tpush/stat/StatReportStrategy;

.field private static g:Z

.field private static h:Z

.field private static volatile i:Ljava/lang/String;

.field private static j:Z

.field private static k:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    .line 60
    new-instance v0, Lcom/tencent/android/tpush/stat/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/stat/d;-><init>(I)V

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    .line 64
    new-instance v0, Lcom/tencent/android/tpush/stat/d;

    invoke-direct {v0, v3}, Lcom/tencent/android/tpush/stat/d;-><init>(I)V

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    .line 69
    sget-object v0, Lcom/tencent/android/tpush/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->f:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    .line 93
    sput-boolean v2, Lcom/tencent/android/tpush/stat/c;->g:Z

    .line 114
    sput-boolean v3, Lcom/tencent/android/tpush/stat/c;->h:Z

    .line 260
    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->c:Ljava/lang/String;

    .line 294
    const-string v0, "pingma.qq.com:80"

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->d:Ljava/lang/String;

    .line 296
    const-string v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/android/tpush/stat/c;->i:Ljava/lang/String;

    .line 310
    sput-boolean v2, Lcom/tencent/android/tpush/stat/c;->j:Z

    .line 330
    const/4 v0, 0x6

    sput-short v0, Lcom/tencent/android/tpush/stat/c;->k:S

    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/stat/StatReportStrategy;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->f:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    return-object v0
.end method

.method static a(J)V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/tencent/android/tpush/stat/f;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 290
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Z)V

    .line 291
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "MTA is disable for current SDK version"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->c(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/d;)V
    .locals 2

    .prologue
    .line 250
    iget v0, p1, Lcom/tencent/android/tpush/stat/d;->a:I

    sget-object v1, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v1, v1, Lcom/tencent/android/tpush/stat/d;->a:I

    if-ne v0, v1, :cond_1

    .line 251
    sput-object p1, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    .line 252
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget-object v0, v0, Lcom/tencent/android/tpush/stat/d;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Lorg/json/JSONObject;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v0, p1, Lcom/tencent/android/tpush/stat/d;->a:I

    sget-object v1, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v1, v1, Lcom/tencent/android/tpush/stat/d;->a:I

    if-ne v0, v1, :cond_0

    .line 254
    sput-object p1, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/d;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 188
    const/4 v1, 0x0

    .line 190
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 191
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 195
    iget v0, p1, Lcom/tencent/android/tpush/stat/d;->d:I

    if-eq v0, v4, :cond_6

    move v0, v2

    .line 198
    :goto_1
    iput v4, p1, Lcom/tencent/android/tpush/stat/d;->d:I

    :goto_2
    move v1, v0

    .line 208
    goto :goto_0

    .line 199
    :cond_0
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    const-string v0, "c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 202
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    iput-object v4, p1, Lcom/tencent/android/tpush/stat/d;->b:Lorg/json/JSONObject;

    :cond_1
    move v0, v1

    .line 205
    goto :goto_2

    :cond_2
    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    const-string v0, "m"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/android/tpush/stat/d;->c:Ljava/lang/String;

    :cond_3
    move v0, v1

    goto :goto_2

    .line 210
    :cond_4
    if-ne v1, v2, :cond_5

    .line 216
    iget v0, p1, Lcom/tencent/android/tpush/stat/d;->a:I

    sget-object v1, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v1, v1, Lcom/tencent/android/tpush/stat/d;->a:I

    if-ne v0, v1, :cond_5

    .line 217
    iget-object v0, p1, Lcom/tencent/android/tpush/stat/d;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Lorg/json/JSONObject;)V

    .line 218
    iget-object v0, p1, Lcom/tencent/android/tpush/stat/d;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->b(Lorg/json/JSONObject;)V

    .line 221
    :cond_5
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/stat/c;->a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :goto_3
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 224
    :catch_1
    move-exception v0

    .line 225
    sget-object v1, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 160
    .line 162
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    invoke-static {p0, v2, v0}, Lcom/tencent/android/tpush/stat/c;->a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/d;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v1, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    .line 176
    :cond_1
    return-void

    .line 168
    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    invoke-static {p0, v2, v0}, Lcom/tencent/android/tpush/stat/c;->a(Landroid/content/Context;Lcom/tencent/android/tpush/stat/d;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/android/tpush/stat/StatReportStrategy;)V
    .locals 3

    .prologue
    .line 87
    sput-object p0, Lcom/tencent/android/tpush/stat/c;->f:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    .line 88
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change to statSendStrategy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-void
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 237
    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/StatReportStrategy;->a(I)Lcom/tencent/android/tpush/stat/StatReportStrategy;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Lcom/tencent/android/tpush/stat/StatReportStrategy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 131
    sput-boolean p0, Lcom/tencent/android/tpush/stat/c;->h:Z

    .line 132
    if-nez p0, :cond_0

    .line 133
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->c(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 266
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    sget-object v1, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hibernateVer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2.0.6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 274
    :cond_2
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 275
    const-string v2, "2.0.6"

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 277
    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 278
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/c;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->e:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 327
    sput-boolean p0, Lcom/tencent/android/tpush/stat/c;->j:Z

    .line 328
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/tencent/android/tpush/stat/c;->g:Z

    return v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    sget-boolean v1, Lcom/tencent/android/tpush/stat/c;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v1

    iget v1, v1, Lcom/tencent/android/tpush/service/a/a;->B:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/tencent/android/tpush/stat/c;->j:Z

    return v0
.end method

.method public static f()S
    .locals 1

    .prologue
    .line 339
    sget-short v0, Lcom/tencent/android/tpush/stat/c;->k:S

    return v0
.end method
