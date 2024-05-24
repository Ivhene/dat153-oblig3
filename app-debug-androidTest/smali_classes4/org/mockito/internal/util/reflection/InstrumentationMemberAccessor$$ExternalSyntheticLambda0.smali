.class public final synthetic Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;


# instance fields
.field public final synthetic f$0:Ljava/lang/invoke/MethodHandle;

.field public final synthetic f$1:[Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/invoke/MethodHandle;

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    iput-object p3, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/invoke/MethodHandle;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/util/reflection/InstrumentationMemberAccessor;->lambda$newInstance$0(Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
