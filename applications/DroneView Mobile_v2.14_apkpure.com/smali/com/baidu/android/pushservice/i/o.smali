.class public Lcom/baidu/android/pushservice/i/o;
.super Lcom/baidu/android/pushservice/i/r;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i/r;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/android/pushservice/i/o;->b:I

    iput v1, p0, Lcom/baidu/android/pushservice/i/o;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/i/r;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/i/r;-><init>(Lcom/baidu/android/pushservice/i/r;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    iput v1, p0, Lcom/baidu/android/pushservice/i/o;->b:I

    iput v1, p0, Lcom/baidu/android/pushservice/i/o;->c:I

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action_name"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/baidu/android/pushservice/i/o;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "network_status"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/baidu/android/pushservice/i/o;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "msg_type"

    iget v2, p0, Lcom/baidu/android/pushservice/i/o;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "msg_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v1, p0, Lcom/baidu/android/pushservice/i/o;->b:I

    if-lez v1, :cond_2

    const-string v1, "msg_len"

    iget v2, p0, Lcom/baidu/android/pushservice/i/o;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "msg_open_by"

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "err_code"

    iget v2, p0, Lcom/baidu/android/pushservice/i/o;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
