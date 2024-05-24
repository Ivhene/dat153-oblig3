.class public final synthetic Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/plugins/MemberAccessor$ConstructionDispatcher;


# instance fields
.field public final synthetic f$0:Lorg/mockito/plugins/MemberAccessor;

.field public final synthetic f$1:Ljava/lang/reflect/Constructor;

.field public final synthetic f$2:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mockito/plugins/MemberAccessor;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/plugins/MemberAccessor;

    iput-object p2, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$0:Lorg/mockito/plugins/MemberAccessor;

    iget-object v1, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lorg/mockito/plugins/MemberAccessor$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/mockito/plugins/MemberAccessor;->lambda$newInstance$0(Lorg/mockito/plugins/MemberAccessor;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
