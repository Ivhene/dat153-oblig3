.class public Lorg/mockito/exceptions/base/MockitoSerializationIssue;
.super Ljava/io/ObjectStreamException;
.source "MockitoSerializationIssue.java"


# instance fields
.field private unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 27
    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 29
    invoke-direct {p0}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;->filterStackTrace()V

    .line 30
    return-void
.end method

.method private filterStackTrace()V
    .locals 1

    .line 33
    invoke-super {p0}, Ljava/io/ObjectStreamException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/base/MockitoSerializationIssue;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 35
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 36
    .local v0, "filter":Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mockito/exceptions/base/MockitoSerializationIssue;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
