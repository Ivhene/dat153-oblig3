.class public Lorg/checkerframework/checker/i18n/I18nChecker;
.super Lorg/checkerframework/framework/source/AggregateChecker;
.source "I18nChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/checkerframework/framework/source/AggregateChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSupportedCheckers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/framework/source/SourceChecker;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .local v0, "checkers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Lorg/checkerframework/framework/source/SourceChecker;>;>;"
    const-class v1, Lorg/checkerframework/checker/i18n/I18nSubchecker;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 27
    const-class v1, Lorg/checkerframework/checker/i18n/LocalizableKeyChecker;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    return-object v0
.end method
