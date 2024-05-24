.class public Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;
.super Ljava/lang/Object;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ParameterBag"
.end annotation


# instance fields
.field private final parameterRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterType:[Lnet/bytebuddy/jar/asm/Type;


# direct methods
.method protected constructor <init>([Lnet/bytebuddy/jar/asm/Type;)V
    .locals 1
    .param p1, "parameterType"    # [Lnet/bytebuddy/jar/asm/Type;

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterType:[Lnet/bytebuddy/jar/asm/Type;

    .line 1704
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterRegistry:Ljava/util/Map;

    .line 1705
    return-void
.end method


# virtual methods
.method protected register(ILjava/lang/String;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1714
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterRegistry:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    return-void
.end method

.method protected resolve(Z)Ljava/util/List;
    .locals 8
    .param p1, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;",
            ">;"
        }
    .end annotation

    .line 1724
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterType:[Lnet/bytebuddy/jar/asm/Type;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1725
    .local v0, "parameterTokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;>;"
    if-eqz p1, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 1726
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 1727
    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    :goto_0
    nop

    .line 1728
    .local v1, "offset":I
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterType:[Lnet/bytebuddy/jar/asm/Type;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1729
    .local v5, "aParameterType":Lnet/bytebuddy/jar/asm/Type;
    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;->parameterRegistry:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1730
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;

    if-nez v6, :cond_1

    invoke-direct {v7}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>()V

    goto :goto_2

    :cond_1
    invoke-direct {v7, v6}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$MethodToken$ParameterToken;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1733
    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Type;->getSize()I

    move-result v7

    add-int/2addr v1, v7

    .line 1728
    .end local v5    # "aParameterType":Lnet/bytebuddy/jar/asm/Type;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1735
    :cond_2
    return-object v0
.end method
