.class public final synthetic Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    check-cast p1, Lorg/mockito/MockedConstruction$Context;

    invoke-static {v0, p1}, Lorg/mockito/internal/util/MockUtil;->lambda$createConstructionMock$1(Ljava/util/function/Function;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/invocation/MockHandler;

    move-result-object p1

    return-object p1
.end method
