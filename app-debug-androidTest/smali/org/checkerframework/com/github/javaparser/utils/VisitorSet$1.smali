.class Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;
.super Ljava/lang/Object;
.source "VisitorSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 97
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 92
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;->access$100(Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 107
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorSet$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    return-void
.end method
