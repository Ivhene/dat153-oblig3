.class Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;
.super Ljava/lang/Object;
.source "VisitorList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final itr:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$index"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    iput p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    .local p1, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 161
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 181
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->next()Lorg/checkerframework/com/github/javaparser/ast/Node;

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

    .line 166
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 186
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->previous()Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 196
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 171
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 172
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->set(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public set(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;"
    .local p1, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->itr:Ljava/util/ListIterator;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    invoke-direct {v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 202
    return-void
.end method
