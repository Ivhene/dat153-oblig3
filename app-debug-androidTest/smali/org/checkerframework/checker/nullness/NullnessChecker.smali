.class public Lorg/checkerframework/checker/nullness/NullnessChecker;
.super Lorg/checkerframework/checker/initialization/InitializationChecker;
.source "NullnessChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SupportedLintOptions;
    value = {
        "noInitForMonotonicNonNull",
        "redundantNullComparison",
        "soundArrayCreationNullness",
        "forbidnonnullarraycomponents"
    }
.end annotation


# static fields
.field public static final LINT_DEFAULT_NOINITFORMONOTONICNONNULL:Z = false

.field public static final LINT_DEFAULT_REDUNDANTNULLCOMPARISON:Z = false

.field public static final LINT_NOINITFORMONOTONICNONNULL:Ljava/lang/String; = "noInitForMonotonicNonNull"

.field public static final LINT_REDUNDANTNULLCOMPARISON:Ljava/lang/String; = "redundantNullComparison"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/checker/initialization/InitializationChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessChecker;->createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

.method protected getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;>;"
        }
    .end annotation

    .line 60
    nop

    .line 61
    invoke-super {p0}, Lorg/checkerframework/checker/initialization/InitializationChecker;->getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 62
    .local v0, "checkers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;>;"
    const-class v1, Lorg/checkerframework/checker/nullness/KeyForSubchecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v0
.end method

.method public getSuppressWarningsKeys()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-super {p0}, Lorg/checkerframework/checker/initialization/InitializationChecker;->getSuppressWarningsKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "nullness"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method
