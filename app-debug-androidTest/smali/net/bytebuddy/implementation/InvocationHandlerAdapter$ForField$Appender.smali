.class public Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;
.super Ljava/lang/Object;
.source "InvocationHandlerAdapter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field final synthetic this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0
    .param p1, "this$0"    # Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;
    .param p2, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 503
    iput-object p1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 505
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 511
    iget-object v0, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 514
    invoke-interface {v1}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    move-object v4, v1

    goto :goto_0

    .line 516
    :cond_0
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 511
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object v0

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    check-cast p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField$Appender;->this$0:Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/InvocationHandlerAdapter$ForField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
