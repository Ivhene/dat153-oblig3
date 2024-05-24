.class Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;
.super Ljava/lang/Object;
.source "InlineDelegateByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/MockedConstruction$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineConstructionMockContext"
.end annotation


# static fields
.field private static final PRIMITIVES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private count:I

.field private final parameterTypeNames:[Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->PRIMITIVES:Ljava/util/Map;

    .line 811
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p3, "parameterTypeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 828
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->arguments:[Ljava/lang/Object;

    .line 830
    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->type:Ljava/lang/Class;

    .line 831
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->parameterTypeNames:[Ljava/lang/String;

    .line 832
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$1;

    .line 806
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;-><init>([Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;I)I
    .locals 0
    .param p0, "x0"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;
    .param p1, "x1"    # I

    .line 806
    iput p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->count:I

    return p1
.end method


# virtual methods
.method public arguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->arguments:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor()Ljava/lang/reflect/Constructor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->parameterTypeNames:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Class;

    .line 846
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 847
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 848
    .local v6, "parameterTypeName":Ljava/lang/String;
    sget-object v7, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->PRIMITIVES:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 849
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v1, v2

    move v2, v8

    goto :goto_1

    .line 852
    .end local v8    # "index":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    :try_start_0
    iget-object v8, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->type:Ljava/lang/Class;

    .line 853
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v6, v4, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v1, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    move v2, v7

    .line 847
    .end local v6    # "parameterTypeName":Ljava/lang/String;
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 854
    .end local v2    # "index":I
    .restart local v6    # "parameterTypeName":Ljava/lang/String;
    .restart local v7    # "index":I
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 861
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v6    # "parameterTypeName":Ljava/lang/String;
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 862
    :catch_1
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    const-string v4, "Could not resolve constructor of type"

    const-string v5, ""

    iget-object v6, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->type:Ljava/lang/Class;

    .line 867
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "with arguments of types"

    .line 870
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v4

    .line 864
    invoke-static {v4}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCount()I
    .locals 2

    .line 836
    iget v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker$InlineConstructionMockContext;->count:I

    if-eqz v0, :cond_0

    .line 840
    return v0

    .line 837
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    const-string v1, "mocked construction context is not initialized"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
