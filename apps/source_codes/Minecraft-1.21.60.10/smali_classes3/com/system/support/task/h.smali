.class public Lcom/system/support/task/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/system/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/system/support/task/h;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/system/support/task/h;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/system/support/task/h;->a:Landroid/content/Context;

    const-string v0, "MyPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/system/support/task/h;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static native a(Lcom/system/support/task/h;Ljava/lang/String;)V
.end method

.method public static native b(Ljava/io/File;)Ljava/lang/String;
.end method

.method public static native i(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public static native j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public final native c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native d(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native e(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final native f()Ljava/util/HashMap;
.end method

.method public final native g()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
