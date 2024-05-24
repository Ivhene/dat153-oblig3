.class public Lorg/mockito/exceptions/base/MockitoAssertionError;
.super Ljava/lang/AssertionError;
.source "MockitoAssertionError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/AssertionError;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/AssertionError;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/AssertionError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 58
    invoke-super {p0, v0}, Ljava/lang/AssertionError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 33
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 34
    .local v0, "filter":Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/mockito/exceptions/base/MockitoAssertionError;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lorg/mockito/exceptions/base/MockitoAssertionError;
    .param p2, "message"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/lang/AssertionError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 46
    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 47
    return-void
.end method


# virtual methods
.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
