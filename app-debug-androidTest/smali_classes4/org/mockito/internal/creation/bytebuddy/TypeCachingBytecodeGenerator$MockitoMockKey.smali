.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
.super Lnet/bytebuddy/TypeCache$SimpleKey;
.source "TypeCachingBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockitoMockKey"
.end annotation


# instance fields
.field private final serializableMode:Lorg/mockito/mock/SerializableMode;

.field private final stripAnnotations:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V
    .locals 0
    .param p3, "serializableMode"    # Lorg/mockito/mock/SerializableMode;
    .param p4, "stripAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            "Z)V"
        }
    .end annotation

    .line 92
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "additionalType":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/TypeCache$SimpleKey;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 93
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 94
    iput-boolean p4, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;ZLorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Lorg/mockito/mock/SerializableMode;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/TypeCache$SimpleKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    return v1

    .line 108
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;

    .line 109
    .local v2, "that":Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
    iget-boolean v3, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    iget-boolean v4, v2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iget-object v4, v2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 110
    invoke-virtual {v3, v4}, Lorg/mockito/mock/SerializableMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 103
    .end local v2    # "that":Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 115
    invoke-super {p0}, Lnet/bytebuddy/TypeCache$SimpleKey;->hashCode()I

    move-result v0

    .line 116
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    add-int/2addr v1, v2

    .line 117
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    invoke-virtual {v2}, Lorg/mockito/mock/SerializableMode;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 118
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
