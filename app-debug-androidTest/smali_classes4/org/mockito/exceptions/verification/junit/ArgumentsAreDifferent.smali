.class public Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;
.super Ljunit/framework/ComparisonFailure;
.source "ArgumentsAreDifferent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final message:Ljava/lang/String;

.field private final unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "wanted"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p2, p3}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->message:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 23
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 24
    .local v0, "filter":Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/mockito/exceptions/verification/junit/ArgumentsAreDifferent;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-super {p0}, Ljunit/framework/ComparisonFailure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->removeFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
