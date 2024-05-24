.class Lannotator/find/TreeFinder$TypePositionFinder$1;
.super Lcom/sun/tools/javac/code/Types$SimpleVisitor;
.source "TreeFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lannotator/find/TreeFinder$TypePositionFinder;->arrayLevels(Lcom/sun/tools/javac/code/Type;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/code/Types$SimpleVisitor<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lannotator/find/TreeFinder$TypePositionFinder;


# direct methods
.method constructor <init>(Lannotator/find/TreeFinder$TypePositionFinder;)V
    .locals 0
    .param p1, "this$1"    # Lannotator/find/TreeFinder$TypePositionFinder;

    .line 461
    iput-object p1, p0, Lannotator/find/TreeFinder$TypePositionFinder$1;->this$1:Lannotator/find/TreeFinder$TypePositionFinder;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "t"    # Lcom/sun/tools/javac/code/Type$ArrayType;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 465
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 461
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder$1;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p1, "t"    # Lcom/sun/tools/javac/code/Type;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 469
    return-object p2
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 461
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder$1;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
