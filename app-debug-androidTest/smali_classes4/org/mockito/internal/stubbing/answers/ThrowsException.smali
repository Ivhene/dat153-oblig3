.class public Lorg/mockito/internal/stubbing/answers/ThrowsException;
.super Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;
.source "ThrowsException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xfaa601baac57f6cL


# instance fields
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 25
    invoke-direct {p0}, Lorg/mockito/internal/stubbing/answers/AbstractThrowsException;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    .line 27
    return-void
.end method


# virtual methods
.method protected getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/mockito/internal/stubbing/answers/ThrowsException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
