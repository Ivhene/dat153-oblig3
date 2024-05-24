.class public final synthetic Lorg/mockito/Mockito$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Lorg/mockito/stubbing/Answer;

.field public final synthetic f$1:Lorg/mockito/stubbing/Answer;


# direct methods
.method public synthetic constructor <init>([Lorg/mockito/stubbing/Answer;Lorg/mockito/stubbing/Answer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;->f$0:[Lorg/mockito/stubbing/Answer;

    iput-object p2, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;->f$1:Lorg/mockito/stubbing/Answer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;->f$0:[Lorg/mockito/stubbing/Answer;

    iget-object v1, p0, Lorg/mockito/Mockito$$ExternalSyntheticLambda5;->f$1:Lorg/mockito/stubbing/Answer;

    check-cast p1, Lorg/mockito/MockedConstruction$Context;

    invoke-static {v0, v1, p1}, Lorg/mockito/Mockito;->lambda$mockConstructionWithAnswer$0([Lorg/mockito/stubbing/Answer;Lorg/mockito/stubbing/Answer;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/MockSettings;

    move-result-object p1

    return-object p1
.end method
