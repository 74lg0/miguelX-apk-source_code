.class Lcom/system/support/task/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Landroid/app/AlertDialog;

.field public final synthetic d:Lcom/system/support/task/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/system/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/system/support/task/h;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/system/support/task/g;->d:Lcom/system/support/task/h;

    iput-object p2, p0, Lcom/system/support/task/g;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/system/support/task/g;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/system/support/task/g;->c:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onClick(Landroid/view/View;)V
.end method
