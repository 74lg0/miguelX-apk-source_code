.class Lcom/crescentmoongames/redline_rush/RedLineRush$1;
.super Ljava/lang/Object;
.source "RedLineRush.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crescentmoongames/redline_rush/RedLineRush;->setSystemUiVisibilityChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crescentmoongames/redline_rush/RedLineRush;


# direct methods
.method constructor <init>(Lcom/crescentmoongames/redline_rush/RedLineRush;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush$1;->this$0:Lcom/crescentmoongames/redline_rush/RedLineRush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush$1;->this$0:Lcom/crescentmoongames/redline_rush/RedLineRush;

    invoke-static {p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->access$000(Lcom/crescentmoongames/redline_rush/RedLineRush;)V

    :cond_0
    return-void
.end method
