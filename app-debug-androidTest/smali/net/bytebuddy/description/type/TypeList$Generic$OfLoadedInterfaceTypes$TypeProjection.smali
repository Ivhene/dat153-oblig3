.class Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeProjection"
.end annotation


# instance fields
.field private final erasure:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final index:I

.field private transient synthetic resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;I[Ljava/lang/Class;)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 807
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "erasure":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;-><init>()V

    .line 808
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    .line 809
    iput p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    .line 810
    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    .line 811
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;I[Ljava/lang/Class;Lnet/bytebuddy/description/type/TypeList$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # I
    .param p3, "x2"    # [Ljava/lang/Class;
    .param p4, "x3"    # Lnet/bytebuddy/description/type/TypeList$1;

    .line 783
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;-><init>(Ljava/lang/Class;I[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public asErasure()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    .line 826
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    iget v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method protected getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 3

    .line 831
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedInterface;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedInterface;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method protected resolve()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 4
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "resolved"
    .end annotation

    .line 816
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;
    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 817
    .local v1, "type":[Ljava/lang/reflect/Type;
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->erasure:[Ljava/lang/Class;

    array-length v2, v2

    array-length v3, v1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->index:I

    aget-object v2, v1, v2

    .line 818
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->getAnnotationReader()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 817
    :goto_0
    move-object v1, v0

    move-object v0, v2

    .end local v0    # "this":Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;
    .end local v1    # "type":[Ljava/lang/reflect/Type;
    :goto_1
    if-nez v0, :cond_2

    iget-object v0, v1, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_2

    :cond_2
    iput-object v0, v1, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes$TypeProjection;->resolved:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_2
    return-object v0
.end method
