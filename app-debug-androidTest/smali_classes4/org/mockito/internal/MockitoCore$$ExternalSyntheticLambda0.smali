.class public final synthetic Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Class;

    check-cast p1, Lorg/mockito/MockedConstruction$Context;

    invoke-static {v0, v1, p1}, Lorg/mockito/internal/MockitoCore;->lambda$mockConstruction$0(Ljava/util/function/Function;Ljava/lang/Class;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p1

    return-object p1
.end method
