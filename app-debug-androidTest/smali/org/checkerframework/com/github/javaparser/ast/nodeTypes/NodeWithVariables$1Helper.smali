.class Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;
.super Ljava/lang/Object;
.source "NodeWithVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1Helper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lorg/checkerframework/com/github/javaparser/ast/type/Type;I)Ljava/util/Optional;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;
    .param p1, "x1"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->toArrayLevel(Lorg/checkerframework/com/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private toArrayLevel(Lorg/checkerframework/com/github/javaparser/ast/type/Type;I)Ljava/util/Optional;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "level"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "I)",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_2

    .line 142
    instance-of v1, p1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    if-nez v1, :cond_1

    .line 143
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 145
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p1

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_2
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
