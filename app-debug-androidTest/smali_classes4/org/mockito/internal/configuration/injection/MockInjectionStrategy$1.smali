.class Lorg/mockito/internal/configuration/injection/MockInjectionStrategy$1;
.super Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.source "MockInjectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;->nop()Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/MockInjectionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected processInjection(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldOwner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 23
    .local p3, "mockCandidates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
