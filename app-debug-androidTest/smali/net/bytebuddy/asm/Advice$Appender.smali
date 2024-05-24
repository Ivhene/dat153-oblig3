.class public Lnet/bytebuddy/asm/Advice$Appender;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Appender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice;

.field private final delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V
    .locals 0
    .param p1, "advice"    # Lnet/bytebuddy/asm/Advice;
    .param p2, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;
    .param p3, "delegate"    # Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 10584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10585
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    .line 10586
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 10587
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    .line 10588
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 9
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 10594
    new-instance v0, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    .line 10595
    .local v0, "emulatingMethodVisitor":Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-interface {v1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p3

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p1

    .line 10601
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Appender$EmulatingMethodVisitor;->resolve(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v1

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    check-cast p1, Lnet/bytebuddy/asm/Advice$Appender;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/asm/Advice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Appender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->advice:Lnet/bytebuddy/asm/Advice;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/Advice;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Appender;->delegate:Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
