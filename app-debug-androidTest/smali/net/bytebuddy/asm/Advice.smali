.class public Lnet/bytebuddy/asm/Advice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;,
        Lnet/bytebuddy/asm/Advice$OnDefaultValue;,
        Lnet/bytebuddy/asm/Advice$NoExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$WithCustomMapping;,
        Lnet/bytebuddy/asm/Advice$Unused;,
        Lnet/bytebuddy/asm/Advice$StubValue;,
        Lnet/bytebuddy/asm/Advice$Local;,
        Lnet/bytebuddy/asm/Advice$Exit;,
        Lnet/bytebuddy/asm/Advice$Enter;,
        Lnet/bytebuddy/asm/Advice$Origin;,
        Lnet/bytebuddy/asm/Advice$FieldValue;,
        Lnet/bytebuddy/asm/Advice$Thrown;,
        Lnet/bytebuddy/asm/Advice$Return;,
        Lnet/bytebuddy/asm/Advice$AllArguments;,
        Lnet/bytebuddy/asm/Advice$Argument;,
        Lnet/bytebuddy/asm/Advice$This;,
        Lnet/bytebuddy/asm/Advice$OnMethodExit;,
        Lnet/bytebuddy/asm/Advice$OnMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Appender;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher;,
        Lnet/bytebuddy/asm/Advice$ExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;,
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler;,
        Lnet/bytebuddy/asm/Advice$Delegator;,
        Lnet/bytebuddy/asm/Advice$PostProcessor;,
        Lnet/bytebuddy/asm/Advice$ArgumentHandler;,
        Lnet/bytebuddy/asm/Advice$OffsetMapping;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final delegate:Lnet/bytebuddy/implementation/Implementation;

.field private final exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

.field private final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 227
    nop

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 216
    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 217
    .local v0, "enter":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    const-string v1, "skipOn"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 218
    const-string v1, "prependLineNumber"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 219
    const-string v1, "inline"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v2, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 220
    const-string v2, "suppress"

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 221
    const-class v3, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-static {v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    .line 222
    .local v3, "exit":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    const-string v4, "repeatOn"

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v4, Lnet/bytebuddy/asm/Advice;->REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 223
    const-string v4, "onThrowable"

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v4, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 224
    const-string v4, "backupArguments"

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v4, Lnet/bytebuddy/asm/Advice;->BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 225
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 226
    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 227
    .end local v0    # "enter":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    .end local v3    # "exit":Lnet/bytebuddy/description/method/MethodList;, "Lnet/bytebuddy/description/method/MethodList<Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;>;"
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    .locals 6
    .param p1, "methodEnter"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .param p2, "methodExit"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    .line 261
    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v4, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    sget-object v5, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    .line 262
    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V
    .locals 0
    .param p1, "methodEnter"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .param p2, "methodExit"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .param p3, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p4, "exceptionHandler"    # Lnet/bytebuddy/asm/Advice$ExceptionHandler;
    .param p5, "delegate"    # Lnet/bytebuddy/implementation/Implementation;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    .line 279
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    .line 280
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 281
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 282
    iput-object p5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    .line 283
    return-void
.end method

.method static synthetic access$1800()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$1900()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$2000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$2100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$2200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->REPEAT_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$2300()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->BACKUP_ARGUMENTS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$600()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 160
    sget-object v0, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method private static locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .locals 4
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "dispatcher"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .param p3, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p4, "delegator"    # Lnet/bytebuddy/asm/Advice$Delegator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;"
        }
    .end annotation

    .line 471
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object v0

    .line 472
    .local v0, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription;
    if-nez v0, :cond_0

    .line 473
    return-object p2

    .line 474
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 476
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;

    invoke-direct {v1, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    invoke-direct {v1, p3, p4}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)V

    :goto_0
    return-object v1

    .line 477
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Advice for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not static"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate advice for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 293
    .local p0, "advice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 372
    .local p0, "enterAdvice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exitAdvice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "enterLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 373
    .local v1, "exitLoader":Ljava/lang/ClassLoader;
    if-ne v0, v1, :cond_0

    .line 374
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 375
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    .line 373
    :goto_0
    invoke-static {p0, p1, v2}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v2

    return-object v2
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 2
    .param p2, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 387
    .local p0, "enterAdvice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "exitAdvice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public static to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 304
    .local p0, "advice":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .param p0, "advice"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 316
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method protected static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .param p0, "advice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "postProcessorFactory"    # Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .param p2, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p4, "delegator"    # Lnet/bytebuddy/asm/Advice$Delegator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 345
    .local p3, "userFactories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<*>;>;"
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .local v0, "methodEnter":Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .line 346
    .local v1, "methodExit":Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 347
    .local v3, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3, p4}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    .line 348
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v1, v3, p4}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v1

    .line 349
    .end local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    goto :goto_0

    .line 350
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No advice defined by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 355
    :cond_3
    sget-object v2, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v2

    .line 357
    .local v2, "classReader":Lnet/bytebuddy/jar/asm/ClassReader;
    :goto_3
    new-instance v3, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v0, p3, v2, v1, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v4

    invoke-interface {v1, p3, v2, v0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 358
    .end local v2    # "classReader":Lnet/bytebuddy/jar/asm/ClassReader;
    :catch_0
    move-exception v2

    .line 359
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading class file of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .param p0, "enterAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "exitAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 400
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method protected static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .param p0, "enterAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "exitAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "postProcessorFactory"    # Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .param p3, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p5, "delegator"    # Lnet/bytebuddy/asm/Advice$Delegator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/asm/Advice$Delegator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 432
    .local p4, "userFactories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<*>;>;"
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .local v0, "methodEnter":Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .line 433
    .local v1, "methodExit":Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 434
    .local v3, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3, p5}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    .line 435
    .end local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 440
    .restart local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v1, v3, p5}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v1

    .line 441
    .end local v3    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    goto :goto_1

    .line 442
    :cond_1
    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    :try_start_0
    new-instance v2, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v3

    goto :goto_2

    :cond_2
    sget-object v3, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 446
    :goto_2
    invoke-interface {v0, p4, v3, v1, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v3

    .line 448
    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v4

    goto :goto_3

    :cond_3
    sget-object v4, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 448
    :goto_3
    invoke-interface {v1, p4, v4, v0, p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    return-object v2

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "exception":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading class file of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 443
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No exit advice defined by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 437
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enter advice defined by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .param p0, "enterAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "exitAdvice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 412
    sget-object v2, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 3
    .param p0, "advice"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 327
    sget-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    invoke-static {p0, v0, p1, v1, v2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;Lnet/bytebuddy/asm/Advice$Delegator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public static withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1

    .line 492
    new-instance v0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-direct {v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 589
    new-instance v0, Lnet/bytebuddy/asm/Advice$Appender;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$Appender;-><init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method protected doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 17
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p4, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p5, "writerFlags"    # I
    .param p6, "readerFlags"    # I

    .line 537
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    new-instance v2, Lnet/bytebuddy/utility/visitor/FramePaddingMethodVisitor;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->isPrependLineNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object v1, v3

    :goto_0
    invoke-direct {v2, v1}, Lnet/bytebuddy/utility/visitor/FramePaddingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 540
    .end local p3    # "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    .local v2, "methodVisitor":Lnet/bytebuddy/jar/asm/MethodVisitor;
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    new-instance v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;

    iget-object v4, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 544
    invoke-interface {v1, v14, v15}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    iget-object v8, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-object v1, v11

    move-object/from16 v3, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;II)V

    .line 541
    return-object v11

    .line 550
    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-class v3, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    new-instance v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 554
    invoke-interface {v3, v14, v15}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v11, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-object v3, v1

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;II)V

    .line 551
    return-object v1

    .line 561
    :cond_2
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_3

    .line 564
    new-instance v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 567
    invoke-interface {v3, v14, v15}, Lnet/bytebuddy/asm/Advice$ExceptionHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v7

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v11, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    .line 574
    invoke-interface {v11}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v16

    move-object v3, v1

    move-object v4, v2

    move-object/from16 v5, p4

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, p5

    move/from16 v13, p6

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;IILnet/bytebuddy/description/type/TypeDescription;)V

    .line 564
    return-object v1

    .line 562
    :cond_3
    move-object v0, v14

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot catch exception during constructor call for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    check-cast p1, Lnet/bytebuddy/asm/Advice;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    .line 502
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 582
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/Implementation;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v0

    return-object v0
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;
    .locals 7
    .param p1, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 599
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;
    .locals 7
    .param p1, "exceptionHandler"    # Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 630
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .param p1, "exceptionHandler"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 619
    new-instance v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Simple;

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Simple;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public withExceptionPrinting()Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 608
    sget-object v0, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->PRINTING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7
    .param p1, "implementation"    # Lnet/bytebuddy/implementation/Implementation;

    .line 640
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p4, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p5, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p6, "writerFlags"    # I
    .param p7, "readerFlags"    # I

    .line 515
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    goto :goto_1

    .line 515
    :cond_1
    :goto_0
    move-object v0, p3

    :goto_1
    return-object v0
.end method
