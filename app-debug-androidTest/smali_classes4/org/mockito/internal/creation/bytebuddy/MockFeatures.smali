.class Lorg/mockito/internal/creation/bytebuddy/MockFeatures;
.super Ljava/lang/Object;
.source "MockFeatures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final interfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final mockedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final serializableMode:Lorg/mockito/mock/SerializableMode;

.field final stripAnnotations:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V
    .locals 1
    .param p3, "serializableMode"    # Lorg/mockito/mock/SerializableMode;
    .param p4, "stripAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            "Z)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lorg/mockito/internal/creation/bytebuddy/MockFeatures;, "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<TT;>;"
    .local p1, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    .line 25
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    .line 26
    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 27
    iput-boolean p4, p0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    .line 28
    return-void
.end method

.method public static withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;
    .locals 1
    .param p2, "serializableMode"    # Lorg/mockito/mock/SerializableMode;
    .param p3, "stripAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            "Z)",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p0, "mockedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V

    return-object v0
.end method
