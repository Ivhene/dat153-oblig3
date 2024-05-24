.class public final synthetic Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/mockito/internal/configuration/injection/filter/OngoingInjector;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/reflect/Field;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lorg/mockito/plugins/MemberAccessor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/plugins/MemberAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$3:Lorg/mockito/plugins/MemberAccessor;

    return-void
.end method


# virtual methods
.method public final thenInject()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter$$ExternalSyntheticLambda0;->f$3:Lorg/mockito/plugins/MemberAccessor;

    invoke-static {v0, v1, v2, v3}, Lorg/mockito/internal/configuration/injection/filter/TerminalMockCandidateFilter;->lambda$filterCandidate$0(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lorg/mockito/plugins/MemberAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
