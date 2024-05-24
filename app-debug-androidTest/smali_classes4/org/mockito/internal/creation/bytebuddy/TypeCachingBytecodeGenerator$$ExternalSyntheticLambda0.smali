.class public final synthetic Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

.field public final synthetic f$1:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;->f$1:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$$ExternalSyntheticLambda0;->f$1:Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->lambda$mockClass$0$org-mockito-internal-creation-bytebuddy-TypeCachingBytecodeGenerator(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
