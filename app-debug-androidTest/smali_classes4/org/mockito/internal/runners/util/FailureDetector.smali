.class public Lorg/mockito/internal/runners/util/FailureDetector;
.super Lorg/junit/runner/notification/RunListener;
.source "FailureDetector.java"


# instance fields
.field private failed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/mockito/internal/runners/util/FailureDetector;->failed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Lorg/junit/runner/notification/RunListener;->testFailure(Lorg/junit/runner/notification/Failure;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/runners/util/FailureDetector;->failed:Z

    .line 21
    return-void
.end method
