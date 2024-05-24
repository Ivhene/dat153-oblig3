.class public Lnet/bytebuddy/implementation/Implementation$Simple;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;,
        Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ADDITIONAL_VARIABLES:I


# instance fields
.field private final byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# direct methods
.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 1
    .param p1, "byteCodeAppender"    # [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1892
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 1893
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 1
    .param p1, "stackManipulation"    # [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 1903
    return-void
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1
    .param p0, "dispatcher"    # Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;

    .line 1912
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;I)Lnet/bytebuddy/implementation/Implementation;
    .locals 1
    .param p0, "dispatcher"    # Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    .param p1, "additionalVariableLength"    # I

    .line 1923
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable$NoOp;

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1
    .param p0, "dispatcher"    # Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    .param p1, "prepareable"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;

    .line 1934
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/implementation/Implementation$Simple;->of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)Lnet/bytebuddy/implementation/Implementation;
    .locals 3
    .param p0, "dispatcher"    # Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;
    .param p1, "prepareable"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;
    .param p2, "additionalVariableLength"    # I

    .line 1946
    if-ltz p2, :cond_0

    .line 1949
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Simple$ForDispatcher;-><init>(Lnet/bytebuddy/implementation/Implementation$Simple$Dispatcher;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;I)V

    return-object v0

    .line 1947
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Additional variable length cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 1963
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Simple;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Simple;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Simple;->byteCodeAppender:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 1956
    return-object p1
.end method
