.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromParameterizedTypeGenericMetadataSupport"
.end annotation


# instance fields
.field private final parameterizedType:Ljava/lang/reflect/ParameterizedType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/ParameterizedType;)V
    .locals 0
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .line 389
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 390
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    .line 391
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;->readActualTypeParameters()V

    .line 392
    return-void
.end method

.method private readActualTypeParameters()V
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;->registerAllTypeVariables(Ljava/lang/reflect/Type;)V

    .line 396
    return-void
.end method


# virtual methods
.method public rawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$FromParameterizedTypeGenericMetadataSupport;->parameterizedType:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
