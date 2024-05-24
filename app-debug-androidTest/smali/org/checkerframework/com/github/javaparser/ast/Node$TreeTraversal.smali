.class public final enum Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
.super Ljava/lang/Enum;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TreeTraversal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

.field public static final enum BREADTHFIRST:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

.field public static final enum DIRECT_CHILDREN:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

.field public static final enum PARENTS:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

.field public static final enum POSTORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

.field public static final enum PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 727
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    const-string v1, "PREORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PREORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    const-string v2, "BREADTHFIRST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->BREADTHFIRST:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    const-string v3, "POSTORDER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->POSTORDER:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    const-string v4, "PARENTS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->PARENTS:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    const-string v5, "DIRECT_CHILDREN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->DIRECT_CHILDREN:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    .line 725
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 725
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 725
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;
    .locals 1

    .line 725
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->$VALUES:[Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    return-object v0
.end method
