//
//  main.m
//  PracticeObjC
//
//  Created by Naver - Minho on 2015. 6. 18..
//  Copyright (c) 2015년 Naver - Minho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MuteVolume.h"

@protocol TestProtocol1 <NSObject>

@property (nonatomic, strong) NSString *thumbnail;

- (NSNumber *)testNumber1;

@end

@protocol TestProtocol2 <NSObject>

- (NSNumber *)testNumber2;

@end

@interface Test1Object : NSObject <TestProtocol1>

@property (nonatomic, strong) NSString *test1ObjectString;
@property (nonatomic, strong) NSString *thumbnail;

@end

@interface Test2Object : Test1Object

@property (nonatomic, strong) NSString *thumbnail;

@end

@interface Test3Object : Test2Object <TestProtocol1>

@property (nonatomic, strong) NSString *test3ObjectString;

@end

@implementation Test1Object

@end

@implementation Test2Object

@dynamic thumbnail;

@end

@implementation Test3Object

@end

unsigned long rnd = 201109;

@interface TestObj : NSObject

//@property (nonatomic, strong) NSString *testNumber1;
@property (assign, nonatomic) BOOL isTest;
@property (nonatomic, getter=isDeleted, assign) BOOL deleted;
@property (nullable, weak, nonatomic) id<TestProtocol1>delegate;

- (int)testMethod;
//- (void)testNumber1;

@end

@implementation TestObj

- (int)testMethod
{
	rnd = rnd * 1103515245UL + 12345;		//난수 계산
	return (rnd & 1) ? 1 : -1;
}

- (NSNumber *)testNumber1
{
	return nil;
}

- (BOOL)isDeleted
{
	NSLog(@"From TestObj isDeleted Method");
	
	return YES;
}

@end

@interface People : TestObj
{
	const char *name;
	
//	__unsafe_unretained People *friend;
}

@property (nonatomic, assign) People *friend;
@property (nonatomic, assign) BOOL deleted;
@property (weak, nonatomic) id<TestProtocol2>delegate;

- (id)initWithName:(const char *)p;
- (void)setFriend:(id)obj;
- (const char *)nameOfFriend;

@end

@interface People ()
{
	BOOL deleted;
}

@end

@implementation People

@dynamic delegate;
- (id)initWithName:(const char *)p
{
	if((self = [super init]) != nil)
	{
		name = p;
		_friend = nil;
		deleted = YES;
	}
	
	return self;
}

- (BOOL)deleted
{
	return deleted;
}

- (void)setDeleted:(BOOL)aDeleted
{
	deleted = aDeleted;
}

- (void)setFriend:(id)obj
{
	_friend = obj;
}

- (const char *)nameOfFriend
{
	if(_friend == nil)
	{
		return "nil";
	}
	else if(_friend)
	{
		return _friend->name;
	}
	else
	{
		return "not nil, but not exist";
	}
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"deleted : %@, self.deleted : %@, self.isDeleted : %@", @(deleted), @(self.deleted), @([self isDeleted])];
}

@end

/*
@interface A : NSObject

- (void)method1;
- (void)method2;
- (void)method3;

@end

@implementation A
- (void)method1
{
	printf("method1 of Class A\n");
}

- (void) method2
{
	printf("method2 of Class A\n");
}

- (void) method3
{
	printf("method3 of Class A\n");
}
@end

@interface B : A
- (void)method1;
- (void)method3;
@end

@implementation B
- (void) method1
{
	printf("method1 of Class B\n");
}

- (void) method3
{
	printf("method3 of Class B and continue~\n");
	[self method1];
	[self method2];
}
@end

@interface C : B
- (void)method2;
@end

@implementation C
- (void)method2
{
	printf("method2 of Class C\n");
}
@end
*/

dispatch_semaphore_t uniqueSemaphore()
{
	static dispatch_semaphore_t semaphore;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		semaphore = dispatch_semaphore_create(1);
	});
	
	return semaphore;
}

@interface AAA : NSObject

@property (nonatomic, strong) NSString *a1;

@end

@implementation AAA

@end

int main(int argc, const char * argv[]) {
/*
	C *c = [[C alloc] init];
	
	[c method1];
	[c method2];
	[c method3];
*/

/*
	MuteVolume *v;
	char buf[8];
	
	v = [[MuteVolume alloc] initWithMin:0 max:10 step:2];
	while(scanf("%s", buf) > 0)
	{
		switch (buf[0]) {
			case 'u':
				[v up];
				break;
			case 'd':
				[v down];
				break;
			case 'm':
				[v mute];
				break;
			case 'q':
				return 0;
		}
		
		printf("Volume : %d\n", [v value]);
	}
*/
	People *people = [[People alloc] init];
	NSDictionary *dict1 = @{@"target" : @"abc",
							@"target" : @"def",
							@"target" : @"ghi"};
	
	NSMutableDictionary *dict2 = [NSMutableDictionary dictionary];
	[dict2 setObject:@"abc" forKey:@"target"];
	[dict2 setObject:@"def" forKey:@"target"];
	[dict2 setObject:@"ghi" forKey:@"target"];
	double ans = 3 * 24 * 60 * 60 + 2 * 60 *60 + 30 * 60 + 10;
	NSLog(@"test : %f", ans);
	Test2Object *ob2 = [[Test2Object alloc] init];
	[ob2 setThumbnail:@"wow"];
	if ([ob2 respondsToSelector:@selector(setThumbnail:)]) {
		NSLog(@"YES");
	} else {
		NSLog(@"NO");
	}
	NSString *compString = @"가나다abc";
	unichar codepoint = [compString characterAtIndex:0];
	char *test2 = (char *)malloc(10);
	memset(test2, 0, 10);
	test2[0] = 0x31;
	test2[1] = 0x32;
	NSString *test = [NSString stringWithCharacters:test2 length:1];
	NSLog(@"가 : 0x%x", codepoint);
	
	dispatch_async(dispatch_get_main_queue(), ^{
		NSLog(@"1");
		dispatch_time_t timeout = dispatch_time(DISPATCH_TIME_NOW, DISPATCH_TIME_FOREVER);
		dispatch_semaphore_wait(uniqueSemaphore(), timeout);
		
		NSLog(@"2");
	});
	
	dispatch_async(dispatch_get_main_queue(), ^{
		NSLog(@"3");
		
		dispatch_time_t timeout = dispatch_time(DISPATCH_TIME_NOW, DISPATCH_TIME_FOREVER);
		dispatch_semaphore_wait(uniqueSemaphore(), timeout);
		
		NSLog(@"4");
	});
	NSString *additionalInfoForMultipart = [NSString stringWithFormat:@"asdf\r\n"];
	const char *boundaryData = [additionalInfoForMultipart UTF8String];
	size_t boundaryLen = strlen(boundaryData);
	
	dispatch_time_t timeout = dispatch_time(DISPATCH_TIME_NOW, DISPATCH_TIME_FOREVER);
	dispatch_semaphore_wait(uniqueSemaphore(), timeout);
	dispatch_semaphore_wait(uniqueSemaphore(), timeout);
	NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
	while ([runLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate dateWithTimeIntervalSinceNow:0.01]]);
	
	MuteVolume *muteVolumeObj = [[MuteVolume alloc] initWithMin:0 max:5 step:1];
	[muteVolumeObj setDeleted:YES];
	muteVolumeObj.deleted = NO;
	NSLog(@"muteVolume : %@, [muteVolume deleted] : %@, muteVolume.deleted : %@, [muteVolume isDeleted] : %@",
		  muteVolumeObj,
		  @([muteVolumeObj isDeleted]),
		  @(muteVolumeObj.deleted),
		  @([muteVolumeObj isDeleted]));
	
	TestObj *testObj = [[TestObj alloc] init];
	[testObj testNumber1];
	NSString *testStr = @"N";
	
	long long size2GB = 2L * 1024L * 1024L * 1024L;
	
	NSLog(@"size of NSUInteger : %d", sizeof(NSUInteger));
	NSLog(@"long long max : %lld", LLONG_MAX);
	NSLog(@"size2GB : %lld", size2GB);
	
//	[testObj setValue:testStr forKey:@"isTest"];
	
	
	
	id v, w;
	
	v = [[Volume alloc] initWithMin:0 max:10 step:2];
	w = [[Volume alloc] initWithMin:0 max:9	step:3];
	Volume *testVolume = [[Volume alloc] init];
	
	[v up];
	printf("%d %d\n", [v valuePrint], [w valuePrint]);
	
	[v up];
	[w up];
	printf("%d %d\n", [v valuePrint], [w valuePrint]);
	
	[v down];
	[w down];
	printf("%d %d\n", [v valuePrint], [w valuePrint]);
	
	People *a = [[People alloc] initWithName:"Alice"];
	NSLog(@"People : %@", a);
	BOOL what = [a deleted];
	printf("1. Friend: %s\n", [a nameOfFriend]);
	
//	@autoreleasepool {
		People *b = [[People alloc] initWithName:"Bob"];
		[a setFriend:b];
		printf("2. Friend: %s, address : %p\n", [a nameOfFriend], [a friend]);

		b = nil;
		printf("2-1. address of b : %p\n", b);
	//	}
	printf("3. Friend: %s, address : %p\n", [a nameOfFriend], [a friend]);
	
	id obj = [[TestObj alloc] init];
	int v2 = [obj testMethod];
	for(int i = 0; i < 100000; i++)
	{
		for(int j = 0; j < 20000; j++)
		{
			v2 += (int)[obj testMethod];
		}
	}
	
    return 0;
}
