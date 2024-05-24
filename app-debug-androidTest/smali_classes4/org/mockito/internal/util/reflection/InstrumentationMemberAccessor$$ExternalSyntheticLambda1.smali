.class public final synthetic Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor$OnConstruction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
