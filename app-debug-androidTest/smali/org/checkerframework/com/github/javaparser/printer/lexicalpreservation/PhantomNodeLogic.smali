.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;
.super Ljava/lang/Object;
.source "PhantomNodeLogic.java"


# static fields
.field private static final LEVELS_TO_EXPLORE:I = 0x3

.field private static final cacheCleaner:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

.field private static final isPhantomNodeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    .line 43
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->cacheCleaner:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    return-object v0
.end method

.method private static inPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;I)Z
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "levels"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "levels"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->inPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
.end method

.method static isPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNodeCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 54
    :cond_0
    instance-of v1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-virtual {v1, v3}, Lorg/checkerframework/com/github/javaparser/Range;->contains(Lorg/checkerframework/com/github/javaparser/Range;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    nop

    .line 59
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->inPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 60
    .local v1, "res":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->cacheCleaner:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->register(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    .line 62
    return v1
.end method
