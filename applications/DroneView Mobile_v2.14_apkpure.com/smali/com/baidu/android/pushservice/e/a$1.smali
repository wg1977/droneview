.class Lcom/baidu/android/pushservice/e/a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/e/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/baidu/android/pushservice/e/a;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/e/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/e/a$1;->c:Lcom/baidu/android/pushservice/e/a;

    iput-object p2, p0, Lcom/baidu/android/pushservice/e/a$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/android/pushservice/e/a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/baidu/android/pushservice/i/k;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/k;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/android/pushservice/i/k;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    iget v1, p0, Lcom/baidu/android/pushservice/e/a$1;->b:I

    iput v1, v0, Lcom/baidu/android/pushservice/i/k;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->a:Ljava/lang/String;

    const-string v2, "030403"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/s;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/u;->b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->a:Ljava/lang/String;

    const-string v2, "030401"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a$1;->c:Lcom/baidu/android/pushservice/e/a;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/s;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AbstractProcessor"

    const-string v1, "insertHttpBehavior exception"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
