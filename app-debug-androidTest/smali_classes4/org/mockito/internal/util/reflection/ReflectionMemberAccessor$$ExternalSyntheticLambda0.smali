.class public final synthetic Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Constructor;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mockito/internal/util/reflection/ReflectionMemberAccessor;->lambda$newInstance$0(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
