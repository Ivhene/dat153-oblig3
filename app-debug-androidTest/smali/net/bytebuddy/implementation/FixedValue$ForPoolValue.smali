.class public Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;
.super Lnet/bytebuddy/implementation/FixedValue;
.source "FixedValue.java"

# interfaces
.implements Lnet/bytebuddy/implementation/FixedValue$AssignerConfigurable;
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FixedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForPoolValue"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final loadedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/lang/Class;)V
    .locals 1
    .param p1, "valueLoadInstruction"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 556
    .local p2, "loadedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 557
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 2
    .param p1, "valueLoadInstruction"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p2, "loadedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 567
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 568
    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p2, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;
    .param p3, "valueLoadInstruction"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p4, "loadedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 581
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/FixedValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    .line 582
    iput-object p3, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 583
    iput-object p4, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 584
    return-void
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 604
    return-object p0
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 7
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 611
    iget-object v0, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/FixedValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    check-cast p1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/FixedValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 597
    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3
    .param p1, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p2, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 590
    new-instance v0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->valueLoadInstruction:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;->loadedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/bytebuddy/implementation/FixedValue$ForPoolValue;-><init>(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method
