.class Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;
.super Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
.source "VisitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

.field final synthetic val$fromIndex:I

.field final synthetic val$toIndex:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;II)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "hashcodeVisitor",
            "equalsVisitor",
            "val$toIndex",
            "val$fromIndex"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    .local p2, "hashcodeVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Integer;Ljava/lang/Void;>;"
    .local p3, "equalsVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Boolean;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    iput p4, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;->val$fromIndex:I

    iput p5, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;->val$toIndex:I

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;)V

    .line 247
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p4, p5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;->innerList:Ljava/util/List;

    .line 248
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
