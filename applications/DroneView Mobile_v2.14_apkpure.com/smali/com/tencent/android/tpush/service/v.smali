.class public Lcom/tencent/android/tpush/service/v;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/service/v;


# instance fields
.field private b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/v;->b:Landroid/os/PowerManager$WakeLock;

    .line 12
    return-void
.end method

.method public static a()Lcom/tencent/android/tpush/service/v;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/v;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/tencent/android/tpush/service/v;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/v;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/v;

    .line 18
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/v;->a:Lcom/tencent/android/tpush/service/v;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/android/tpush/service/v;->b:Landroid/os/PowerManager$WakeLock;

    .line 27
    return-void
.end method

.method public b()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/android/tpush/service/v;->b:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method
