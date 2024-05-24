.class public final synthetic Lorg/mockito/Mockito$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/mockito/MockSettings;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/MockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda2;->f$0:Lorg/mockito/MockSettings;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda2;->f$0:Lorg/mockito/MockSettings;

    check-cast p1, Lorg/mockito/MockedConstruction$Context;

    invoke-static {v0, p1}, Lorg/mockito/Mockito;->lambda$mockConstruction$4(Lorg/mockito/MockSettings;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;

    move-result-object p1

    return-object p1
.end method
