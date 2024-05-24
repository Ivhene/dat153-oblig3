.class public Lorg/mockito/internal/debugging/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Lorg/mockito/invocation/Location;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7da9543f78c59610L

.field private static final stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;


# instance fields
.field private sourceFile:Ljava/lang/String;

.field private stackTraceLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;-><init>()V

    sput-object v0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Ljava/lang/Throwable;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "stackTraceHolder"    # Ljava/lang/Throwable;
    .param p2, "isInline"    # Z

    .line 26
    sget-object v0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-direct {p0, v0, p1, p2}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;)V
    .locals 2
    .param p1, "stackTraceFilter"    # Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    .line 30
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "stackTraceFilter"    # Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;
    .param p2, "stackTraceHolder"    # Ljava/lang/Throwable;
    .param p3, "isInline"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/mockito/internal/debugging/LocationImpl;->computeStackTraceInformation(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V

    .line 36
    return-void
.end method

.method private computeStackTraceInformation(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;Ljava/lang/Throwable;Z)V
    .locals 3
    .param p1, "stackTraceFilter"    # Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;
    .param p2, "stackTraceHolder"    # Ljava/lang/Throwable;
    .param p3, "isInline"    # Z

    .line 50
    invoke-virtual {p1, p2, p3}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->filterFirst(Ljava/lang/Throwable;Z)Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 54
    .local v0, "filtered":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_0

    .line 55
    const-string v1, "-> at <<unknown line>>"

    iput-object v1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    .line 56
    const-string v1, "<unknown source file>"

    iput-object v1, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    .line 61
    :goto_0
    return-void
.end method


# virtual methods
.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/debugging/LocationImpl;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceLine:Ljava/lang/String;

    return-object v0
.end method
