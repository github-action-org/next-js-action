module.exports = {
    apps: [{
      name: 'my-vue-app', // PM2에서 사용할 앱의 이름
      script: 'yarn', // yarn 명령어를 실행합니다.
      args: 'start:prd', // start:prd 스크립트를 실행합니다.
      interpreter: 'none', // 인터프리터를 사용하지 않습니다.
      autorestart: true, // 앱이 비정상적으로 종료되었을 때 자동으로 재시작합니다.
      watch: true, // 파일 변경 감지 여부
      ignore_watch: ["node_modules", "dist"], // 감시할 파일 및 디렉토리 목록에서 제외할 항목
      env: {
        NODE_ENV: 'development' // 개발 환경 설정
      },
      env_production: {
        NODE_ENV: 'production' // 프로덕션 환경 설정
      }
    }]
  };