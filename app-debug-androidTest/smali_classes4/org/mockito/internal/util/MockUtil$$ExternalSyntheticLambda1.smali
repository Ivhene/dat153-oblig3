.class public final synthetic Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/mockito/mock/MockCreationSettings;

.field public final synthetic f$1:Lorg/mockito/invocation/MockHandler;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$0:Lorg/mockito/mock/MockCreationSettings;

    iput-object p2, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$1:Lorg/mockito/invocation/MockHandler;

    iput-object p3, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$0:Lorg/mockito/mock/MockCreationSettings;

    iget-object v1, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$1:Lorg/mockito/invocation/MockHandler;

    iget-object v2, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/util/MockUtil;->lambda$createMock$0(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
