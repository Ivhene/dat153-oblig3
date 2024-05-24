.class public Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;
.super Ljava/lang/Object;
.source "VerboseMockInvocationLogger.java"

# interfaces
.implements Lorg/mockito/listeners/InvocationListener;


# instance fields
.field private mockInvocationsCounter:I

.field final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;-><init>(Ljava/io/PrintStream;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->mockInvocationsCounter:I

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStream:Ljava/io/PrintStream;

    .line 31
    return-void
.end method

.method private printFooter()V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 84
    return-void
.end method

.method private printHeader()V
    .locals 3

    .line 69
    iget v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->mockInvocationsCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->mockInvocationsCounter:I

    .line 70
    iget-object v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############ Logging method invocation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->mockInvocationsCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on mock/spy ########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private printInvocation(Lorg/mockito/invocation/DescribedInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/mockito/invocation/DescribedInvocation;

    .line 77
    iget-object v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invoked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/invocation/DescribedInvocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printlnIndented(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private printReturnedValueOrThrowable(Lorg/mockito/listeners/MethodInvocationReport;)V
    .locals 3
    .param p1, "methodInvocationReport"    # Lorg/mockito/listeners/MethodInvocationReport;

    .line 43
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->threwException()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " with message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 48
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has thrown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printlnIndented(Ljava/lang/String;)V

    .line 50
    .end local v0    # "message":Ljava/lang/String;
    goto :goto_2

    .line 52
    :cond_1
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getReturnedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getReturnedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    .line 57
    .local v0, "type":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has returned: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getReturnedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printlnIndented(Ljava/lang/String;)V

    .line 60
    .end local v0    # "type":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private printStubInfo(Lorg/mockito/listeners/MethodInvocationReport;)V
    .locals 2
    .param p1, "methodInvocationReport"    # Lorg/mockito/listeners/MethodInvocationReport;

    .line 63
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getLocationOfStubbing()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stubbed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getLocationOfStubbing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printlnIndented(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method private printlnIndented(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public reportInvocation(Lorg/mockito/listeners/MethodInvocationReport;)V
    .locals 1
    .param p1, "methodInvocationReport"    # Lorg/mockito/listeners/MethodInvocationReport;

    .line 35
    invoke-direct {p0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printHeader()V

    .line 36
    invoke-direct {p0, p1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printStubInfo(Lorg/mockito/listeners/MethodInvocationReport;)V

    .line 37
    invoke-interface {p1}, Lorg/mockito/listeners/MethodInvocationReport;->getInvocation()Lorg/mockito/invocation/DescribedInvocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printInvocation(Lorg/mockito/invocation/DescribedInvocation;)V

    .line 38
    invoke-direct {p0, p1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printReturnedValueOrThrowable(Lorg/mockito/listeners/MethodInvocationReport;)V

    .line 39
    invoke-direct {p0}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;->printFooter()V

    .line 40
    return-void
.end method
