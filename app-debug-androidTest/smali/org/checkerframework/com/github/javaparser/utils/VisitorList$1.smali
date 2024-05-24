.class Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;
.super Ljava/lang/Object;
.source "VisitorList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->iterator()Ljava/util/Iterator;
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
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->itr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 129
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 124
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

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

    .line 134
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 139
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 140
    return-void
.end method
