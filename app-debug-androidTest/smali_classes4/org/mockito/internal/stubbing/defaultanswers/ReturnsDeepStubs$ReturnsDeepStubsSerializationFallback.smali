.class Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;
.super Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.source "ReturnsDeepStubs.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReturnsDeepStubsSerializationFallback"
.end annotation


# instance fields
.field private final returnTypeGenericMetadata:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;)V
    .locals 0
    .param p1, "returnTypeGenericMetadata"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    .line 165
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;->returnTypeGenericMetadata:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    .line 167
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    sget-object v0, Lorg/mockito/Mockito;->RETURNS_DEEP_STUBS:Lorg/mockito/stubbing/Answer;

    return-object v0
.end method


# virtual methods
.method protected actualParameterizedType(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsDeepStubs$ReturnsDeepStubsSerializationFallback;->returnTypeGenericMetadata:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    return-object v0
.end method
