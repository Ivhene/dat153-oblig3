.class public Lorg/mockito/runners/MockitoJUnitRunner;
.super Lorg/mockito/junit/MockitoJUnitRunner;
.source "MockitoJUnitRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/runners/MockitoJUnitRunner$Strict;,
        Lorg/mockito/runners/MockitoJUnitRunner$Silent;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 47
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/mockito/junit/MockitoJUnitRunner;-><init>(Ljava/lang/Class;)V

    .line 48
    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 0
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lorg/mockito/junit/MockitoJUnitRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 66
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-super {p0}, Lorg/mockito/junit/MockitoJUnitRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-super {p0, p1}, Lorg/mockito/junit/MockitoJUnitRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 54
    return-void
.end method
