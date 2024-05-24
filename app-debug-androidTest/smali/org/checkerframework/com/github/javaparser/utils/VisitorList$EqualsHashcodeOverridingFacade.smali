.class Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
.super Ljava/lang/Object;
.source "VisitorList.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EqualsHashcodeOverridingFacade"
.end annotation


# instance fields
.field private final overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "overridden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    .local p2, "overridden":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    .line 273
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    iget-object v1, v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object v2, v2, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 298
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 292
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorList;

    iget-object v1, v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
