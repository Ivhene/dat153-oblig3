.class public Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$LazyFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyTypeDescription"
.end annotation


# instance fields
.field private transient synthetic delegate:Lnet/bytebuddy/description/type/TypeDescription;

.field private final name:Ljava/lang/String;

.field private final typePool:Lnet/bytebuddy/pool/TypePool;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V
    .locals 0
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p2, "name"    # Ljava/lang/String;

    .line 8836
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;-><init>()V

    .line 8837
    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    .line 8838
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    .line 8839
    return-void
.end method


# virtual methods
.method protected delegate()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "delegate"
    .end annotation

    .line 8851
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;
    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->typePool:Lnet/bytebuddy/pool/TypePool;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .end local v0    # "this":Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, v1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_1

    :cond_1
    iput-object v0, v1, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->delegate:Lnet/bytebuddy/description/type/TypeDescription;

    :goto_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 8845
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$LazyFacade$LazyTypeDescription;->name:Ljava/lang/String;

    return-object v0
.end method
