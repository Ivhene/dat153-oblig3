.class public Lorg/mockito/internal/invocation/InterceptedInvocation;
.super Ljava/lang/Object;
.source "InterceptedInvocation.java"

# interfaces
.implements Lorg/mockito/invocation/Invocation;
.implements Lorg/mockito/internal/exceptions/VerificationAwareInvocation;


# static fields
.field public static final NO_OP:Lorg/mockito/internal/invocation/RealMethod;

.field private static final serialVersionUID:J = 0x697a30d762e14c8L


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private isIgnoredForVerification:Z

.field private final location:Lorg/mockito/invocation/Location;

.field private final mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/invocation/mockref/MockReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

.field private final rawArguments:[Ljava/lang/Object;

.field private final realMethod:Lorg/mockito/internal/invocation/RealMethod;

.field private final sequenceNumber:I

.field private stubInfo:Lorg/mockito/invocation/StubInfo;

.field private verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lorg/mockito/internal/invocation/InterceptedInvocation$1;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/InterceptedInvocation$1;-><init>()V

    sput-object v0, Lorg/mockito/internal/invocation/InterceptedInvocation;->NO_OP:Lorg/mockito/internal/invocation/RealMethod;

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/invocation/mockref/MockReference;Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;Lorg/mockito/internal/invocation/RealMethod;Lorg/mockito/invocation/Location;I)V
    .locals 1
    .param p2, "mockitoMethod"    # Lorg/mockito/internal/invocation/MockitoMethod;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "realMethod"    # Lorg/mockito/internal/invocation/RealMethod;
    .param p5, "location"    # Lorg/mockito/invocation/Location;
    .param p6, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/invocation/mockref/MockReference<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/mockito/internal/invocation/MockitoMethod;",
            "[",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/invocation/RealMethod;",
            "Lorg/mockito/invocation/Location;",
            "I)V"
        }
    .end annotation

    .line 46
    .local p1, "mockRef":Lorg/mockito/internal/invocation/mockref/MockReference;, "Lorg/mockito/internal/invocation/mockref/MockReference<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    .line 48
    iput-object p2, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    .line 49
    invoke-static {p2, p3}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->expandArgs(Lorg/mockito/internal/invocation/MockitoMethod;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    .line 50
    iput-object p3, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->rawArguments:[Ljava/lang/Object;

    .line 51
    iput-object p4, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->realMethod:Lorg/mockito/internal/invocation/RealMethod;

    .line 52
    iput-object p5, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->location:Lorg/mockito/invocation/Location;

    .line 53
    iput p6, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->sequenceNumber:I

    .line 54
    return-void
.end method

.method private equalArguments([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public callRealMethod()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->realMethod:Lorg/mockito/internal/invocation/RealMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/RealMethod;->isInvokable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->realMethod:Lorg/mockito/internal/invocation/RealMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/RealMethod;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->cannotCallAbstractRealMethod()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 178
    instance-of v0, p1, Lorg/mockito/internal/invocation/InterceptedInvocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/mockito/internal/invocation/InterceptedInvocation;

    .line 182
    .local v0, "other":Lorg/mockito/internal/invocation/InterceptedInvocation;
    iget-object v2, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v2}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v3}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    iget-object v3, v0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    .line 184
    invoke-direct {p0, v2}, Lorg/mockito/internal/invocation/InterceptedInvocation;->equalArguments([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 182
    :goto_0
    return v1
.end method

.method public getArgument(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getArgument(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 129
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getArgumentsAsMatchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/ArgumentMatcher;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InterceptedInvocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/ArgumentsProcessor;->argumentsToMatchers([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/mockito/invocation/Location;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->location:Lorg/mockito/invocation/Location;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/mockref/MockReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMockRef()Lorg/mockito/internal/invocation/mockref/MockReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/invocation/mockref/MockReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockRef:Lorg/mockito/internal/invocation/mockref/MockReference;

    return-object v0
.end method

.method public getMockitoMethod()Lorg/mockito/internal/invocation/MockitoMethod;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    return-object v0
.end method

.method public getRawArguments()[Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->rawArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getRawReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->mockitoMethod:Lorg/mockito/internal/invocation/MockitoMethod;

    invoke-interface {v0}, Lorg/mockito/internal/invocation/MockitoMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRealMethod()Lorg/mockito/internal/invocation/RealMethod;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->realMethod:Lorg/mockito/internal/invocation/RealMethod;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->sequenceNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public ignoreForVerification()V
    .locals 1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->isIgnoredForVerification:Z

    .line 104
    return-void
.end method

.method public isIgnoredForVerification()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->isIgnoredForVerification:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->verified:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->isIgnoredForVerification:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public markStubbed(Lorg/mockito/invocation/StubInfo;)V
    .locals 0
    .param p1, "stubInfo"    # Lorg/mockito/invocation/StubInfo;

    .line 93
    iput-object p1, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->stubInfo:Lorg/mockito/invocation/StubInfo;

    .line 94
    return-void
.end method

.method public markVerified()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->verified:Z

    .line 84
    return-void
.end method

.method public stubInfo()Lorg/mockito/invocation/StubInfo;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/mockito/internal/invocation/InterceptedInvocation;->stubInfo:Lorg/mockito/invocation/StubInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Lorg/mockito/internal/reporting/PrintSettings;

    invoke-direct {v0}, Lorg/mockito/internal/reporting/PrintSettings;-><init>()V

    invoke-virtual {p0}, Lorg/mockito/internal/invocation/InterceptedInvocation;->getArgumentsAsMatchers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/reporting/PrintSettings;->print(Ljava/util/List;Lorg/mockito/invocation/Invocation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
